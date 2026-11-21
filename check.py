"""Run the competency question against the example and a counterexample."""
from pathlib import Path
import sqlite3

root = Path(__file__).resolve().parent
query = (root / "question.sql").read_text()
with sqlite3.connect(":memory:") as db:
    db.execute("PRAGMA foreign_keys = ON")
    db.executescript((root / "model.sql").read_text())
    expected = [("Taxonomy",)]
    for case in ("Published example", "Extra stage with sequence information only"):
        if case.startswith("Extra"):
            db.execute("INSERT INTO stage VALUES (7, 'Review')")
        actual = db.execute(query).fetchall()
        if actual != expected:
            raise SystemExit(f"{case}: expected {expected}, got {actual}")
        print(f"{case}: {actual[0][0]}")
