class CatSerializer
  include FastJsonapi::ObjectSerializer
  attribute :name_with_salutation do |object|
    "Mr. #{object.name}"
  end
  
  attributes :breed

  # attribute :owner do |cat|
  #   OwnerSerializer.new(cat.owner)
  # end

  attribute :owner do |object|
    {
      name: object.owner.name,
      age: object.owner.age,
    }
  end

end
