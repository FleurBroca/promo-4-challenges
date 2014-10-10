PRODUIT = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130,
    "Coca" => 160,
    "Sprite" => 170,
    "French fries" => 130,
    "Potatoes" => 130
  }

  MENU = {
        "Happy Meal" => ["Cheese Burger", "French fries", "Coca"],
        "Best Of Big Mac" => ["Big Mac", "French fries", "Coca" ],
        "Best Of Royal Cheese" => ["Royal Cheese", "Potatoes", "Sprite"]
        }


def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order

  resultat = 0
  if PRODUIT[burger] != nil
    resultat = resultat + PRODUIT[burger]
  end

  if PRODUIT[side] != nil
    resultat = resultat + PRODUIT[side]
  end

  if PRODUIT[beverage] != nil
    resultat = resultat + PRODUIT[beverage]
  end

resultat

end

#p poor_calories_counter("Cheese_burger", "Coca", "French_fries")

def calories_counter(*orders)

  resultat = 0
  orders.each do | order |
    if PRODUIT[order] != nil
      resultat = resultat + PRODUIT[order]
    elsif MENU[order] != nil
      MENU[order].each do | menu_element |
        resultat = resultat + PRODUIT[menu_element]
      end
    end
  end
  resultat

end
p calories_counter("French Fries", "Happy Meal", "Sprite")

