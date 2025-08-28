/// @function Vector2(x, y)
/// @param {real} x
/// @param {real} y
/// create and manipulate 2d coordinate groups
function Vector2(_x, _y) {
    return {
        x: _x,
        y: _y,

        length: function() {
            return sqrt(self.x * self.x + self.y * self.y);
        },
		
		distance: function(v) {
			return Vector2(self.x - v.x, self.y - v.y);
		},
		
		direction: function(v) {
			var h = v.x - self.x;
			var vert = v.y - self.y;
			return Vector2((h/(h+vert)),(vert/(h+vert)));
		},

        normalize: function() {
            var len = self.length();
            if (len != 0) {
                self.x /= len;
                self.y /= len;
            }
        },

        add: function(v) {
            self.x += v.x;
            self.y += v.y;
        }
    }
}
