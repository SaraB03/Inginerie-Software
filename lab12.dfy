method Caller () //will pass
{
    var result := Triple (18) ;
    assert result < 100; //postconditie Triple(18) <100
    }

method Triple (x: int ) returns (r: int) // will pass
ensures r == 3 * x //postconditie
{
    var y := 2 * x;
    r := x + y;
    }

method Triple (x: int ) returns (r: int) // will pass
requires x % 2 == 0
ensures r == 3 * x
{
    var y := x / 2;
    r := 6 * y;
    }

