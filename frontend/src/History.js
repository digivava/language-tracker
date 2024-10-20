import './History.css';

export default function History({ records }) {  
  return (
    <div className="tracker-container">
      <div className="history-table">
        <div className="history-table-row history-table-header-row">
          <div className="history-table-item">
            When
          </div>
          <div className="history-table-item">
            Language
          </div>
          <div className="history-table-item">
            Activity
          </div>
          <div className="history-table-item">
            How Long
          </div>
        </div>
        {records.map(record => <RecordRow key={record.created_at} record={record} />)}
      </div>
    </div>
  );
}

function RecordRow({ record }) {
  let unitsDisplay;
  if (record.units === "hours") {
    unitsDisplay = record.number === 1 ? "hr" : "hrs";
  } else if (record.units === "minutes") {
    unitsDisplay = record.number === 1 ? "min" : "mins";
  }

  let readableTime;
  if (record.created_at) {
    const time = Date.parse(record.created_at);
    const formatter = new Intl.DateTimeFormat('en-US', { month: '2-digit', day: '2-digit', year: 'numeric' });
    readableTime = formatter.format(time);
  }

  return (
    <div className="history-table-row">
      <div className="history-table-item">
        {readableTime}
      </div>
      <div className="history-table-item">
        {record.language.name}
      </div>
      <div className="history-table-item">
        {record.activity}
      </div>
      <div className="history-table-item">
        {record.number}
      </div>
      <div className="history-table-item">
        {unitsDisplay}
      </div>
    </div>
  );
}