function in = localResetFcn(in)

% Randomize reference signal
blk = sprintf("rlwatertank/DesiredVoltage");
a = 5;
b = 10;
volatage =  randi([5,10])
in = setBlockParameter(in,blk,'Value',num2str(volatage));

% Randomize initial dutycycle
dutyCycle = randi(100,1);
blk = "rlwatertank/Water-Tank System/dutyCycle";
in = setBlockParameter(in,blk,'Tag',num2str(dutyCycle));

