#include <SPI.h>  
#include <RFID.h>  
#define SS_PIN 10  
#define RST_PIN 5  
RFID rfid(SS_PIN,RST_PIN);  
int serNum[5],tempNum[5]={1,1,1,1,1};
int buzzerPin=8;
void setup()
{  
  pinMode(buzzerPin,OUTPUT);
  Serial.begin(9600);  
  SPI.begin();
  rfid.init();
}  
void loop()
{  
  if(rfid.isCard())
  {  
    if(rfid.readCardSerial()) 
    {   
      if(rfid.serNum[0] != tempNum[0] || rfid.serNum[1] != tempNum[1] || rfid.serNum[2] != tempNum[2] || rfid.serNum[3] != tempNum[3] || rfid.serNum[4] != tempNum[4] )
      {
        Serial.print(rfid.serNum[0],DEC);  
        Serial.print(rfid.serNum[1],DEC);  
        Serial.print(rfid.serNum[2],DEC);  
        Serial.print(rfid.serNum[3],DEC);  
        Serial.println(rfid.serNum[4],DEC);
        for(int i=0;i<5;i++)
        {
          tempNum[i] = rfid.serNum[i];
        }
        tone(buzzerPin,1000,500);
      }
    }  
  }  
  rfid.halt();  
}
