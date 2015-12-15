function [xx , tt] = note(f,dur)

    ff = 2*pi*f;
    tt = 0:1/(ff*1000):dur;
    xx = sin (tt);

end