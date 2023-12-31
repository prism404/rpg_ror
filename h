<div class="overflow-hidden text-center bg-[url('/assets/characters/castle.png')] h-screen bg-cover bg-center bg-no-repeat">
    <div class="flex items-center justify-center h-screen">
      <img src="/assets/characters/menu.png" class="w-[60em]"/>
        <%= form_with(model: @character, local: true, class: "absolute grid grid-cols-2 pl-36 h-[80%]") do |form| %>
          <div class="pr-36 grid grid-rows-1 gap-4 place-content-center">
            <%= form.hidden_field :image, id: 'selected-image-path' %>
            <img id="selected-character-image" class="hidden absolute" alt="Selected Character" />

            <div id="images-container" class="absolute top-80 h-72 left-10 overflow-hidden">
              <table class="table-fixed w-96">
                <tbody>
                  <tr>
                    <td>
                      <div class="grid grid-cols-4">
                        <% @warriors.each do |warrior_male| %>
                          <div class="image-selector warrior-image w-36 <%= warrior_male.gender %>" data-image-path="/assets/classes/warriors/<%= warrior_male.gender %>/<%= warrior_male.path %>.png">
                              <img src="/assets/classes/warriors/<%= warrior_male.gender %>/<%= warrior_male.path %>.png" class="character-image warrior-image <%= warrior_male.gender %>" style="<%= 'display: none;' unless warrior_male.gender == 'male' %>">
                          </div>            
                        <% end %>
                      </div>
                    </td>
                  <tr>
                  <tr>
                    <td>
                      <% @warriors.each do |warrior_female| %>
                        <div class="image-selector warrior-image w-36 overflow-hidden	<%= warrior_female.gender %>" data-image-path="/assets/classes/warriors/<%= warrior_female.gender %>/<%= warrior_female.path %>.png">
                          <img src="/assets/classes/warriors/female/<%= warrior_female.path %>.png" class="character-image warrior-image female" style="<%= 'display: none;' %>">                  
                        </div>                 
                      <% end %>
                    </td>
                  </tr>
                </tbody>
              </table>

              <table class="table-fixed w-96">
                <tbody>
                  <tr>
                    <td>
                      <div class="grid grid-cols-4">
                        <% @mages.each do |mage_male| %>
                          <div class="image-selector mage-image w-36 overflow-hidden<%= mage_male.gender %>" data-image-path="/assets/classes/mages/<%= mage_male.gender %>/<%= mage_male.path %>.png">
                            <img src="/assets/classes/mages/<%= mage_male.gender %>/<%= mage_male.path %>.png" class="character-image mage-image <%= mage_male.gender %>" style="<%= 'display: none;'%>">
                          </div>          
                        <% end %>
                      </div>
                    </td>
                  <tr>
                  <tr>
                    <td>
                      <% @mages.each do |mage_female| %>
                        <div class="image-selector mage-image w-36 overflow-hidden bg-slate-950<%= mage_female.gender %>" data-image-path="/assets/classes/mages/<%= mage_female.gender %>/<%= mage_female.path %>.png">
                          <img src="/assets/classes/mages/female/<%= mage_female.path %>.png" class="character-image mage-image female" style="<%= 'display: none;' %>">                  
                        </div>                 
                      <% end %>
                    </td>
                  </tr>
                </tbody>
              </table>

              <table class="table-fixed w-96">
                <tbody>
                  <tr>
                    <td>
                      <div class="grid grid-cols-4">
                        <% @archers.each do |archer_male| %>
                          <div class="image-selector archer-image w-36 overflow-hidden<%= archer_male.gender %>" data-image-path="/assets/classes/archers/<%= archer_male.gender %>/<%= archer_male.path %>.png">
                            <img src="/assets/classes/archers/<%= archer_male.gender %>/<%= archer_male.path %>.png" class="character-image archer-image <%= archer_male.gender %>" style="<%= 'display: none;'%>">
                          </div>          
                        <% end %>
                      </div>
                    </td>
                  <tr>
                  <tr>
                    <td>
                      <% @archers.each do |archer_female| %>
                        <div class="image-selector archer-image w-36 overflow-hidden<%= archer_female.gender %>" data-image-path="/assets/classes/archers/<%= archer_female.gender %>/<%= archer_female.path %>.png">
                          <img src="/assets/classes/archers/female/<%= archer_female.path %>.png" class="character-image archer-image female" style="<%= 'display: none;' %>">                  
                        </div>                 
                      <% end %>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>

            <div class="flex gap-8 absolute bottom-56 mt-4 ml-6">
              <div>
                <%= form.radio_button :gender, 'male', checked: true, class: 'gender-radio-button' %>
                  <%= form.label :gender, 'Male', value: 'male', class: 'text-[#e17b4f]' %>
              </div>
              <div>
                <%= form.radio_button :gender, 'female', class: 'gender-radio-button' %>
                <%= form.label :gender, 'Female', value: 'female', class: 'text-[#e17b4f]' %>
              </div>
            </div>

            <div class="flex gap-8 relative top-72 mt-[22.5em] mr-4">
              <% @classes.each do |classe| %>
                <div>
                  <%= form.radio_button :classe_id, classe.id, checked: classe.category.downcase == 'warrior', class: "class-radio-button", "data-class-name" => classe.category.downcase %>
                  <%= form.label :classe_id, classe.category, value: classe.id, class: 'text-[#e17b4f]' %>
                </div>
              <% end %>
            </div>
            <div class="absolute bottom-10">
              <%= form.submit "Continue", class: "ml-8 p-2 px-8 bg-[#db863b] rounded" %>
            </div>
          </div>

          <div class="pl-28">
            <div class="absolute top-28">
              <p class="mr-28 text-2xl text-[#fcf0d9]">EXP: 0</p>
              <div class="mt-16 grid grid-rows-1 gap-4 place-content-center">
                <%= form.label :name, class: 'block text-[#e8ca9f] font-medium' %>
                <%= form.text_field :name, class: 'bg-transparent shadow appearance-none border rounded w-[11em] py-2 px-3 text-[#e8ca9f] leading-tight focus:outline-none focus:shadow-outline' %>
              </div>
            </div>
            <div class="absolute top-80 mt-3">
              <% @classes.each do |classe| %>
                <div id="class-info-<%= classe.id %>" class="class-info <%= 'hidden' unless classe.category.downcase == 'warrior' %>">
                  <div class="text-left">
                    <p class="text-[#d83522]">HP: <%= classe.hp %></p>
                    <p class="mt-12 text-[#7ab4cb]">Attack: <%= classe.attack %></p>
                    <p class="mt-12 text-[#2d9b78]">Defense: <%= classe.defense %></p>
                  </div>
                  <p class="relative mt-28 right-36 text-[#e8ca9f]"><%= classe.description %></p>
                </div>
              <% end %>
            </div>
          </div>
        <% end %>
    </div>
</div>
