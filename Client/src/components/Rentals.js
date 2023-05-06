import React from "react";
import useHousesList from "../hooks/useHousesList";
import Rental from "./Rental";

const Rentals = ({Filter}) => {
  const rentals = useHousesList(Filter);
  return (
    <div className="py-3 sm:py-5">
      <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5 gap-4">
        {rentals.map((rental) => (
          <Rental
            title={rental.title}
            description={rental.description}
            date={rental.date}
            image={rental.image}
            price={rental.price}
            rating={rental.rating}
          />
        ))}
      </div>
    </div>
  );
};

export default Rentals;
