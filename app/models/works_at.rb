class WorksAt < ActiveRecord::Base

validates(:barbershop, {:presence => true })
validates(:barber, {:presence => true })
validates(:start_time, {:presence => true })
validates(:end_time, {:presence => true })
validates(:day_of_week, {:presence => true })
validates(:day_of_week, uniqueness: { scope: :barber_id })

#How do I distinguish between barbershop name or barber name
belongs_to  :barbershop
belongs_to  :barber



end
