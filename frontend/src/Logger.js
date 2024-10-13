export default function Logger({ onSubmit }) {
  return (
      <div className="logger">
          <form onSubmit={e => {
              e.preventDefault();
              onSubmit(e);
          }}>
              <p>I studied{' '}
                  <select name="language">
                      <option value="Arabic">Arabic</option>
                      <option value="Amharic">Amharic</option>
                      <option value="Cantonese">Cantonese</option>
                      <option value="Dutch">Dutch</option>
                      <option value="French">French</option>
                      <option value="German">German</option>
                      <option value="Japanese">Japanese</option>
                      <option value="Korean">Korean</option>
                      <option value="Mandarin">Mandarin</option>
                      <option value="Norwegian">Norwegian</option>
                      <option value="Persian">Persian</option>
                      <option value="Russian">Russian</option>
                      <option value="Spanish">Spanish</option>
                      <option value="Vietnamese">Vietnamese</option>
                  </select>{' '}
                  for <input type="text" name="number"></input>{' '}
                  <select name="units">
                      <option value="minutes">minutes</option>
                      <option value="hours">hours</option>
                  </select>.
              </p>
              <input type="submit" value="Submit" />
          </form>
      </div>
  );
}