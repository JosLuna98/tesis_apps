import * as React from "react";

export class Explorer extends React.Component<undefined, undefined>
{
  constructor(props: any) {
    super(props);
    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(selectorFiles: FileList) {
    console.log(selectorFiles);
  }

  render() {
    return (
      <div>
        <input type="file" onChange={(e) => this.handleChange(e.target.files!)} />
      </div>
    )
  }
}

export default Explorer as unknown as React.FC