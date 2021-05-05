class BoughtIngredientPolicy < AllowedCrudPolicy
  def bought_ingredients_report?
    true
  end
end
