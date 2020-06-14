using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace QuanProject
{
    public class DataAccess
    {
        // instantiatae an object of datacontext
        CarNoteEntities context = new CarNoteEntities();
        public List<Car> GetCars()
        {
            var query = context.Cars;
            return query.ToList<Car>();
        }

        public Car GetCarById(int carId)
        {
            return context.Cars.Find(carId);
        }
                
        public int AddCar(Car car)
        {
            try
            {
                
                {
                    context.Cars.Add(car);
                    context.SaveChanges();
                    return car.CarID;
                }
            }
            catch 
            {
                return -1;                
            }

        }

        public void DeleteCar(int carId)
        {
            try
            {
                Car car = GetCarById(carId);
                context.Cars.Remove(car);
                context.SaveChanges();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
        }

        public void UpdateCar(Car car)
        {
            try
            {
                Car oldCar = GetCarById(car.CarID);
                oldCar.CarName = car.CarName;
                context.SaveChanges();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
        }

        public int MaxCarId()
        {
            var maxCarId = (from i in context.Cars
                            select i.CarID).DefaultIfEmpty(0).Max();
            
            return maxCarId;
        }

        public List<Record> GetRecords()
        {
            var query = context.Records;
            return query.ToList<Record>();
        }

        public int MaxRecordId()
        {
            var maxRecordId = (from i in context.Records
                               select i.Id).DefaultIfEmpty (0).Max();
            return maxRecordId;
        }
        public Record GetRecordById(int recordId)
        {
            return context.Records.Find(recordId);
        }

        public int AddRecord(Record record)
        {
            try
            {

                {
                    context.Records.Add(record);
                    context.SaveChanges();
                    return record.Id;
                }
            }
            catch 
            {

                return -1;
            }

        }

        public void DeleteRecord(int recordId)
        {
            try
            {
                Record record = GetRecordById(recordId);
                context.Records.Remove(record);
                context.SaveChanges();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
        }

        public void UpdateRecord(Record record)
        {
            try
            {
                Record oldRecord = GetRecordById(record.Id);
                oldRecord.CarID = record.CarID;
                oldRecord.DateTime = record.DateTime;
                oldRecord.ODO = record.ODO;
                oldRecord.Volume = record.Volume;
                oldRecord.Payment = record.Payment;
                context.SaveChanges();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
        }


    }
}
