
      abstract  class Animal
    {
        String _name;
        String _environment;
        String _food;

        Animal(this._name, this._environment, this._food);

        String get food => _food;

          set food(String value) {
            _food = value;
          }

          String get environment => _environment;

          set environment(String value) {
            _environment = value;
          }

          String get name => _name;

          set name(String value) {
            _name = value;
          }
        }