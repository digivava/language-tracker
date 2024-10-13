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
            How Long
          </div>
        </div>
        {records.map(record => <RecordRow key={record.created_at} record={record} />)}
      </div>
    </div>
  );
}

function RecordRow({ record }) {
  return (
    <div className="history-table-row">
      <div className="history-table-item">
        {record.created_at}
      </div>
      <div className="history-table-item">
        {record.language}
      </div>
      <div className="history-table-item">
        {record.number}
      </div>
      <div className="history-table-item">
        {record.units}
      </div>
    </div>
  );
}