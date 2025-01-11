class Cast < ApplicationRecord
  belongs_to :movie
  belongs_to :actor

  validates_uniqueness_of :movie_id, scope: :actor_id

  def actor_name
    actor && actor.name
  end

  def actor_name=(name)
    self.actor = Actor.find_or_create_by(name: name) unless name.blank?
  end
end
