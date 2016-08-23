class HomeController < ApplicationController
  def index
    @hello = "hello"
    @all = Product.all
    
    @cars = []
    for i in 0..2699
      if(i%30 == 0)
        @car = []
        drivedist = 0
        drivetime = 0
        idletime = 0
        heattime	= 0
        avgsp	= 0
        maxsp	= 0
        lowspt	= 0
        mlowspt	= 0
        midspt	= 0
        mhighspt	= 0
        highspt	= 0
        netdrivet	= 0
        acc7to10	= 0
        acc11to13	= 0
        acc14to17	= 0
        acc18	= 0
        dacc21	= 0
        dacc18to20	= 0
        dacc14to17	= 0
        dacc11to13	= 0
        dacc7to10 = 0
      end
      drivedist += @all[i].drivedist
      drivetime += @all[i].drivetime
      idletime += @all[i].idletime
      heattime	+= @all[i].heattime
      avgsp	+= @all[i].avgsp
      maxsp	+= @all[i].maxsp
      lowspt	+= @all[i].lowspt
      mlowspt	+= @all[i].mlowspt
      midspt	+= @all[i].midspt
      mhighspt	+= @all[i].mhighspt
      highspt	+= @all[i].highspt
      netdrivet	+= @all[i].netdrivet
      acc7to10	+= @all[i].acc7to10
      acc11to13	+= @all[i].acc11to13
      acc14to17	+= @all[i].acc14to17
      acc18	+= @all[i].acc18
      dacc21	+= @all[i].dacc21
      dacc18to20	+= @all[i].dacc18to20
      dacc14to17	+= @all[i].dacc14to17
      dacc11to13	+= @all[i].dacc11to13
      dacc7to10 += @all[i].dacc7to10
      if(i%30 == 29)
        @car << drivedist/30
        @car << drivetime/30
        @car << idletime/30
        @car << heattime/30
        @car << avgsp/30
        @car << maxsp/30
        @car << lowspt/30
        @car << mlowspt/30
        @car << midspt/30
        @car << mhighspt/30
        @car << highspt/30
        @car << netdrivet/30
        @car << acc7to10/30
        @car << acc11to13/30
        @car << acc14to17/30
        @car << acc18/30
        @car << dacc21/30
        @car << dacc18to20/30
        @car << dacc14to17/30
        @car << dacc11to13/30
        @car << dacc7to10/30
        @cars << @car
      end
    end
    
    @safe = []
    for i in 0..89
      if(@cars[i][4] >= 25.5)
        if(@cars[i][0] < 11.5)
          if(@cars[i][20] < 14.5)
            @safe << 0
          else
            @safe << 1
          end
        else
          if(@cars[i][12] < 21.5)
            @safe << 0
          else
            if(@cars[i][0] < 18.5)
              @safe << 1
            else
              @safe << 0
            end
          end
        end
      else
        if(@cars[i][20] < 3.5)
          if(@cars[i][12] < 1.5)
            @safe << 0
          else
            if(@cars[i][0] >= 1.5)
              @safe << 1
            else
              @safe << 0
            end
          end    
        else
          if(@cars[i][0] >= 2.5)
            if(@cars[i][12] < 6.5)
              if(@cars[i][0] < 5.5)
                if(@cars[i][20] < 10.5)
                  @safe << 0
                else
                  @safe << 1
                end
              else
                @safe << 0
              end
            else
              if(@cars[i][8] < 213)
                if(@cars[i][20] < 23.5)
                  if(@cars[i][0] < 7.5)
                    @safe << 1
                  else
                    @safe << 0
                  end
                else
                  if(@cars[i][0] < 4.5)
                    @safe << 2
                  else
                    if(@cars[i][19] < 5.5)
                      @safe << 1
                    else
                      @safe << 2
                    end
                  end
                end
              else
                @safe << 0
              end
            end
          else
            if(@cars[i][12] < 3.5)
              if(@cars[i][20] < 9.5)
                @safe << 1
              else
                @safe << 2
              end
            else
              if(@cars[i][0] < 1.5)
                if(@cars[i][20] < 5.5)
                  @safe << 1
                else
                  @safe << 2
                end
              else
                if(@cars[i][20] < 12.5)
                  @safe << 1
                else
                  @safe << 2
                end
              end
            end
          end
        end
      end
    end
    @property = []
    for i in 0..89
      @property << rand(0..8)
    end
  end
end


