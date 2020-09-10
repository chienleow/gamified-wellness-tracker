Prefix Verb   URI Pattern                                                                              Controller#Action
                                      GET    /                                                                                        sessions#home
                               signup GET    /signup(.:format)                                                                        users#new
                                login GET    /login(.:format)                                                                         sessions#new
                                      POST   /login(.:format)                                                                         sessions#create
                               logout DELETE /logout(.:format)                                                                        sessions#destroy
          auth_google_oauth2_callback GET    /auth/google_oauth2/callback(.:format)                                                   sessions#google
                           user_goals GET    /user_goals(.:format)                                                                    user_goals#index
                                      POST   /user_goals(.:format)                                                                    user_goals#create
                        new_user_goal GET    /user_goals/new(.:format)                                                                user_goals#new
                       edit_user_goal GET    /user_goals/:id/edit(.:format)                                                           user_goals#edit
                            user_goal GET    /user_goals/:id(.:format)                                                                user_goals#show
                                      PATCH  /user_goals/:id(.:format)                                                                user_goals#update
                                      PUT    /user_goals/:id(.:format)                                                                user_goals#update
                                      DELETE /user_goals/:id(.:format)                                                                user_goals#destroy
                                goals GET    /goals(.:format)                                                                         goals#index
                                      POST   /goals(.:format)                                                                         goals#create
                             new_goal GET    /goals/new(.:format)                                                                     goals#new
                            edit_goal GET    /goals/:id/edit(.:format)                                                                goals#edit
                                 goal GET    /goals/:id(.:format)                                                                     goals#show
                                      PATCH  /goals/:id(.:format)                                                                     goals#update
                                      PUT    /goals/:id(.:format)                                                                     goals#update
                                      DELETE /goals/:id(.:format)                                                                     goals#destroy
                                users GET    /users(.:format)                                                                         users#index
                                      POST   /users(.:format)                                                                         users#create
                             new_user GET    /users/new(.:format)                                                                     users#new
                            edit_user GET    /users/:id/edit(.:format)                                                                users#edit
                                 user GET    /users/:id(.:format)                                                                     users#show
                                      PATCH  /users/:id(.:format)                                                                     users#update
                                      PUT    /users/:id(.:format)                                                                     users#update
                                      DELETE /users/:id(.:format)                                                                     users#destroy
                           team_users GET    /teams/:team_id/users(.:format)                                                          users#index
                                      POST   /teams/:team_id/users(.:format)                                                          users#create
                        new_team_user GET    /teams/:team_id/users/new(.:format)                                                      users#new
                                teams GET    /teams(.:format)                                                                         teams#index
                                      POST   /teams(.:format)                                                                         teams#create
                             new_team GET    /teams/new(.:format)                                                                     teams#new
                            edit_team GET    /teams/:id/edit(.:format)                                                                teams#edit
                                 team GET    /teams/:id(.:format)                                                                     teams#show
                                      PATCH  /teams/:id(.:format)                                                                     teams#update
                                      PUT    /teams/:id(.:format)                                                                     teams#update
                                      DELETE /teams/:id(.:format)                                                                     teams#destroy