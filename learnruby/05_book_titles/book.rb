class Book
  # write your code here
  @title = ""
  def title
    return @title
  end
  def title=(title)
    t = ""
    small_case_words = ["and", "a", "an", "or", "the", "up", "around", "over", "between", "through", "to", "about", "but", "for", "nor", "in", "the", "of"]
    titlearray = title.split(" ")
    for i in 0...titlearray.length
      if i == 0
        t += titlearray[i].capitalize
      elsif small_case_words.include?(titlearray[i])
        t += titlearray[i]
      else
        t += titlearray[i].capitalize
      end
      if i != titlearray.length-1
        t += " "
      end
    end
    @title = t
  end
end
