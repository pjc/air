class MileageCalculator
  
  #   codes = ['ORD', 'JFK', 'BOS', 'LAX']
  
  CHART = { "ORD-JFK" => 740, 
            'ORD-BOS' => 866, 
            'ORD-LAX' => 1744, 
            'JFK-BOS' => 186, 
            'JFK-LAX' => 2475,
            'BOS-LAX' => 2611
          }
  
  def initialize(departure_airport_code, arrival_airport_code)
    @departure_airport_code = departure_airport_code
    @arrival_airport_code = arrival_airport_code
  end
  
  def miles
      CHART["#{@departure_airport_code}-#{@arrival_airport_code}"] ||
        CHART["#{@arrival_airport_code}-#{@departure_airport_code}"]
  end
  
  def duration
    
  end
  
end