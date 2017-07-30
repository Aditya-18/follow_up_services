/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var timer = document.getElementById('timer');
var toggleBtn = document.getElementById('toggle');
var resetBtn = document.getElementById('reset');

var watch = new Stopwatch(timer);

function start() {
  watch.start();
  toggleBtn.textContent = 'Stop';
}

function stop() {
  watch.stop();
  toggleBtn.textContent = 'Start';
}

toggleBtn.addEventListener('click', function() {
  (watch.isOn) ? stop() : start();
});

resetBtn.addEventListener('click', function() {
  if (!watch.isOn) {
    watch.reset();
  }
});

