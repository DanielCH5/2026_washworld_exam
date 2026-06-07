"use client";

import { useState } from "react";
import { MdWarningAmber } from "react-icons/md";
import { FaLock } from "react-icons/fa";

// ─── Types ───────────────────────────────────────────────────────────────────
// "active" is not prop and is styled based on focus. the states are:
// normal:  default grey border, no icons
// active:  green border on all sides, no icons (driven by focus state, not a prop)
// error:   red border on all sides, warning icon on right
// locked:  default grey border, lock icon on left, no focus reaction

type InputState = "normal" | "error" | "locked";
type InputType = "text" | "password" | "email";

interface TextInputProps {
  type: InputType;
  label: string;
  placeholder?: string;
  value?: string;
  state?: InputState;
  errorMessage?: string;
  onChange?: (val: string) => void;
}

// TEXT INPUT

export function TextInput({
  type = "text",
  label,
  placeholder = "",
  value: externalValue,
  state = "normal",
  errorMessage,
  onChange,
}: TextInputProps) {
  // if the form is active /focused we show green border
  const [focused, setFocused] = useState(false);

  // use when parent doesn't pass a value 
  const [internalValue, setInternalValue] = useState(externalValue ?? "");

  // Controlled if value prop is passed
  const value = externalValue !== undefined ? externalValue : internalValue;

  const isLocked = state === "locked";
  const isError = state === "error";

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    if (isLocked) return;
    setInternalValue(e.target.value);
    onChange?.(e.target.value); // only fires if onChange was provided
  };




  // normal:  bottom border only, grey
  // active:  full green border on all sides
  // error:   full red border on all sides
  // locked:  bottom border only, grey (same as normal, no focus reaction)

  const wrapperBorder = () => {
    if (isError) return "border-2 border-[var(--warning-Red)]";
    if (focused && !isLocked) return "border-2 border-b-4 border border-[var(--green-White-BG)]";
    return "border-b-3 border-gray-300";  // normal + locked
  };

  // ── Input padding — makes room for icons ──────────────────────────────────

  const inputPadding = () => {
    if (isLocked) return "pl-10 pr-3"; // room for lock icon on left
    if (isError) return "pl-3 pr-10"; // room for warning icon on right
    return "px-3";
  };

  // ─── Render ───────────────────────────────────────────────────────────────

  return (
    <div className="mb-5 font-sans">

      {/* Label */}
      <label className="block font-bold text-sm mb-1 text-gray-900">
        {label}
      </label>

      {/* Input wrapper — provides background + border */}
      <div className={`relative bg-[var(--grey-5)] ${wrapperBorder()}`}>

        {/* Lock icon — locked state only, left side */}
        {isLocked && (
          <span
            aria-hidden="true"
            className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400 pointer-events-none"
          >
            <FaLock size={18} />
          </span>
        )}

        <input
          type={type}
          placeholder={placeholder}
          value={value}
          disabled={isLocked}
          onChange={handleChange}
          onFocus={() => setFocused(true)}
          onBlur={() => setFocused(false)}
          className={`
            w-full py-3 ${inputPadding()}
            text-sm bg-transparent border-none outline-none
            ${isLocked ? "text-gray-400 cursor-not-allowed" : "text-gray-900 cursor-text"}
          `}
        />

        {/* Warning icon — error state only, right side */}
        {isError && (
          <span
            aria-hidden="true"
            className="absolute right-3 top-1/2 -translate-y-1/2 text-red-600 pointer-events-none"
          >
            <MdWarningAmber size={20} />
          </span>
        )}

      </div>

      {/* Error helper text only shown when state="error" and errorMessage is provided */}
      {isError && errorMessage && (
        <p className="mt-1 text-xs text-red-600">{errorMessage}</p>
      )}
    </div>
  );
}

export default TextInput;