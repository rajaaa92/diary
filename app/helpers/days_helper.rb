module DaysHelper

  def day_link day
    return new_day unless day.present?
    day.created_at.to_date == Date.today ? edit(day) : show(day)
  end

  def day_field day, date
    date > Date.today || (date < Date.today && day.nil?) ? date.day : day_link(day)
  end

  def day_text day
    day.tags_array.join(", ") if day.present?
  end

  private

  def show day
    link_to l(day.created_at.to_date, format: :day), day
  end

  def edit day
    link_to l(day.created_at.to_date, format: :day), edit_day_path(day)
  end

  def new_day
    link_to l(Date.today, format: :day), new_day_path(header: Date.today)
  end

end
