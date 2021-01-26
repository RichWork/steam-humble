require 'rails_helper'

RSpec.describe 'Games', type: :request do
<<<<<<< HEAD

  it 'returns a successful response for the index page' do
    get games_path
    expect(response).to be_successful

    # TODO: refactor these to a Capybara test
    expect(response.body).to include('All games')
    expect(response.body).to include('add a game')
  end

  it 'returns a succesful response for the new game page' do
    get new_game_path
    expect(response).to be_successful
  end

  it 'returns a succesful response for the edit game page' do
    game = build(:game)
    game.save!

    get edit_game_path(game.id)
    expect(response).to be_successful

=======
>>>>>>> 4da2eaef45ed0ef187f7c20ba8441e5567906eda
  describe 'GET /games' do
    it 'includes the game' do
      create(:game, game_name: 'Game 1')
      get games_path
      expect(body).to include('Game 1')
    end
<<<<<<< HEAD

=======
>>>>>>> 4da2eaef45ed0ef187f7c20ba8441e5567906eda
  end
end
