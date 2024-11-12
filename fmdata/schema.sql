-- Drop existing tables if they exist
DROP TABLE IF EXISTS position_weights;
DROP TABLE IF EXISTS user_profile;

-- Create user_profile table
CREATE TABLE user_profile (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  profile_name TEXT UNIQUE NOT NULL
);

-- Create position_weights table
CREATE TABLE position_weights (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_profile INTEGER NOT NULL,
  title TEXT NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

  -- Attribute Weight Columns
  aer INT NOT NULL,
  agg INT NOT NULL,
  agi INT NOT NULL,
  ant INT NOT NULL,
  bal INT NOT NULL,
  cmd INT NOT NULL,
  com INT NOT NULL,
  cmp INT NOT NULL,
  cnt INT NOT NULL,
  cor INT NOT NULL,
  cro INT NOT NULL,
  dec INT NOT NULL,
  det INT NOT NULL,
  dri INT NOT NULL,
  ecc INT NOT NULL,
  fin INT NOT NULL,
  fir INT NOT NULL,
  fla INT NOT NULL,
  fre INT NOT NULL,
  han INT NOT NULL,
  hea INT NOT NULL,
  kic INT NOT NULL,
  ldr INT NOT NULL,
  lon INT NOT NULL,
  lth INT NOT NULL,
  mar INT NOT NULL,
  nat INT NOT NULL,
  otb INT NOT NULL,
  one_on_ones INT NOT NULL,
  pas INT NOT NULL,
  pen INT NOT NULL,
  pos INT NOT NULL,
  pun INT NOT NULL,
  ref INT NOT NULL,
  tro INT NOT NULL,
  sta INT NOT NULL,
  spd INT NOT NULL,
  str INT NOT NULL,
  setP INT NOT NULL,
  tck INT NOT NULL,
  tea INT NOT NULL,
  tec INT NOT NULL,
  thr INT NOT NULL,
  vis INT NOT NULL,
  work INT NOT NULL,

  -- Foreign Key Constraint
  FOREIGN KEY (user_profile) REFERENCES user_profile (id)
);
