export default function Logger({ onSubmit }) {
  return (
      <div className="logger">
          <form onSubmit={e => {
              e.preventDefault();
              onSubmit(e);
          }}>
              <p>I studied{' '}
                  <select name="language">
                      <option value="Japanese">Japanese</option>
                      <option value="Mandarin">Mandarin</option>
                      <option value="Russian">Russian</option>
                  </select>{' '}
                  for <input type="text" name="number"></input>{' '}
                  <select name="units">
                      <option value="mins">minutes</option>
                      <option value="hrs">hours</option>
                  </select>.
              </p>
              <input type="submit" value="Submit" />
          </form>
      </div>
  );
}