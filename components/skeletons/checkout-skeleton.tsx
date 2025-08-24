const CheckoutDetailSkeleton = () => (
  <div className="animate-pulse space-y-6 bg-white rounded-lg shadow p-8">
    <div className="h-8 bg-gray-200 rounded w-1/3 mb-4"></div>
    <div className="flex space-x-4">
      <div className="h-32 w-48 bg-gray-200 rounded"></div>
      <div className="flex-1 space-y-4">
        <div className="h-6 bg-gray-200 rounded w-1/2"></div>
        <div className="h-6 bg-gray-200 rounded w-1/3"></div>
        <div className="h-6 bg-gray-200 rounded w-1/4"></div>
      </div>
    </div>
    <div className="h-10 bg-gray-200 rounded w-full mt-6"></div>
    <div className="h-12 bg-gray-200 rounded w-1/2 mt-4"></div>
  </div>
);

export default CheckoutDetailSkeleton;
