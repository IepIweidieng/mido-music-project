function logToLinearScale(min, max, value)
    return math.pow(value, math.exp(1)) * (max-min) + min;
end
function valueToFreq(v)
    return logToLinearScale(20, 20000, (v-20)/20000);
end
function linearToLogScale(min, max, value)
    return math.pow(value, math.exp(-1)) * (max-min) + min;
end
function freqToValue(f)
    return linearToLogScale(20, 20000, (f-20)/20000);
end