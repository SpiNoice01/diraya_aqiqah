export const MyReserveListSkeleton = () => (
  <div className="space-y-6">
    {[...Array(3)].map((_, i) => (
      <div
        key={i}
        className="flex items-center space-x-4 p-4 bg-white rounded shadow animate-pulse"
      >
        <div className="w-24 h-16 bg-gray-200 rounded" />
        <div className="flex-1 space-y-2">
          <div className="h-4 bg-gray-200 rounded w-1/3" />
          <div className="h-4 bg-gray-200 rounded w-1/2" />
          <div className="h-4 bg-gray-200 rounded w-1/4" />
        </div>
        <div className="h-8 w-20 bg-gray-200 rounded" />
      </div>
    ))}
  </div>
);
