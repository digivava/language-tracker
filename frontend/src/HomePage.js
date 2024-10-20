import History from './History.js';
import Logger from './Logger.js';
import { useState, useEffect } from 'react';

export default function HomePage() {
  const [records, setRecords] = useState([]);

  useEffect(() => {
    getData();
  }, []);

  async function getData() {
    const url = 'http://localhost:3001/records';
    try {
      const response = await fetch(url)
      if (!response.ok) {
        throw new Error(`Failed to retrieve records. ${response.status}: ${response.body}`)
      }
      const json = await response.json();
      setRecords(json);
    } catch (error) {
      console.error(error);
    }
  };

  async function updateRecords(event) {
    const date = new Date();
    
    const record = {
      language: event.target.language.value,
      number: event.target.number.value,
      activity: event.target.activity.value,
      units: event.target.units.value,
    };

    await postData(record);
    await getData();
  }
  
  return (
    <div className="home-page">
      <History records={records} />
      <Logger onSubmit={updateRecords} />
    </div>
  );
}

async function postData(data) {
  const url = 'http://localhost:3001/records';
  const requestOptions = {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(data)
  }
    try {
      const response = await fetch(url, requestOptions)
      if (!response.ok) {
        const errorDetails = await response.json();
        throw new Error(`Failed to update records. ${response.status}: ${JSON.stringify(errorDetails)}`)
      }
      const json = await response.json();
      console.log(json);
    } catch (error) {
      console.error(error);
    }
}