<div class="nav-bar d-md-flex flex-column justify-content-between">
    <div class="profile d-flex flex-column">
      <span class="name"><%= session.getAttribute("email") %></span>
      <!-- <span id="check-info" class="check-info">AVAILABLE TESTS<i class="fa-solid fa-diagram-next" style="padding-left: 1vw;"></i></span> -->
    </div>
    <div class="subjects position-relative d-flex flex-column justify-content-center">
      <!-- <div id="before-start" class="test-start position-absolute">
          <div class="sub">
              <button id="start" onclick="startTest()">Start Test 1</button>
          </div>
          <div class="sub">
              <button id="start" onclick="startTest()">Start Test 2</button>
          </div>
          <div class="sub">
              <button id="start" onclick="startTest()">Start Test 3</button>
          </div>
          <div class="sub">
              <button id="start" onclick="startTest()">Start Test 4</button>
          </div>
          <div class="sub">
              <button id="start" onclick="startTest()">Start Test 5</button>
          </div>
      </div> -->
      <div id="on-start">
          <div class="sub">
              <button id="physics" onclick="currentSubject(1)" style="background: #8c0075;
              color: white;">Physics</button>
          </div>
          <div class="sub">
              <button id="chemistry" onclick="currentSubject(2)">Chemistry</button>
          </div>
          <div class="sub">
              <button id="mathematics" onclick="currentSubject(3)">Mathematics</button>
          </div>
      </div>
    </div>
    <div class="submit">
        <button type="button" onclick="document.getElementById('test-form').submit()">SUBMIT</button>
    </div>
</div>