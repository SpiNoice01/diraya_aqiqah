import { Metadata } from "next";
import { LoginGoogleButton } from "@/components/login-button";
import Link from "next/link";

export const metadata: Metadata = {
  title: "Sign In",
};

const SignInPage = async ({
  searchParams,
}: {
  searchParams?: Promise<{ redirect_url?: string }>;
}) => {
  const params = (await searchParams)?.redirect_url;
  let redirectUrl;
  if (!params) {
    redirectUrl = "/";
  } else {
    redirectUrl = `/${params}`;
  }
  return (
    <div className="min-h-screen flex items-center">
      <div className="bg-white w-96 mx-auto rounded-sm shadow p-8">
        <h1 className="text-4xl font-bold mb-1">Sign In</h1>
        <p className="font-medium mb-5 text-gray-500">
          Sign In to your account
        </p>
        <div className="py-4 text-center space-y-4">
          <LoginGoogleButton redirectUrl={redirectUrl} />
          
          {/* Temporary Admin Access Button */}
          <div className="border-t pt-4">
            <p className="text-sm text-gray-400 mb-3">Development Access</p>
            <Link
              href="/admin/dashboard"
              className="block w-full bg-red-600 text-white font-medium py-3 px-6 text-base rounded-sm hover:bg-red-700 transition-colors"
            >
              🔧 Admin Access (Dev Mode)
            </Link>
            <p className="text-xs text-gray-400 mt-2">
              *Bypass authentication for development
            </p>
          </div>
        </div>
      </div>
    </div>
  );
};

export default SignInPage;
