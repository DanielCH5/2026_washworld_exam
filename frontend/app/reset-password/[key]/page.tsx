import ResetPasswordForm from "@/components/ResetPasswordForm";

interface Props {
    params: { key: string };
}

export default async function ShowResetPassword({ params }: Props) {
    const { key } = await params;
    const checkKey = await fetch(`http://localhost/api/reset-password/${key}`)
    const res = await checkKey.json()
    if (!checkKey.ok) return <p>{res.error_message}</p>
    return (
        <>
            <ResetPasswordForm resetKey={res.token} />
        </>
    )
}