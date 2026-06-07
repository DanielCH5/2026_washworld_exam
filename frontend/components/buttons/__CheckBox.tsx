"use client"
//made checkbox a component since we use it frequently and i wanted full control
interface Props {
  checked: boolean
  onChange: () => void
  label?: string
}

export default function Checkbox({ checked, onChange, label }: Props) {
  return (
    <label className="flex items-center gap-2 cursor-pointer">
      <div className="relative shrink-0" onClick={onChange}>
        <div className={`w-5 h-5 border-2 flex items-center justify-center transition-colors duration-200
          ${checked 
            ? "bg-[var(--green-White-BG)] border-[var(--green-White-BG)]" 
            : "bg-white border-[var(--solid-Black)]"
          }`}>
          {checked && (
            <svg className="w-4 h-4 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={4}>
              <path strokeLinecap="square" strokeLinejoin="miter" d="M4 13l5 5L20 6" />
            </svg>
          )}
        </div>
      </div>
      {label && <span>{label}</span>}
    </label>
  )
}