import NewCaseComponent from "../../components/NewCaseComponent/NewCaseComponent";

const NewCase = () => {
  function handleSubmit(e, form) {
    e.preventDefault();
    console.log(form);
  }
  return <NewCaseComponent handleSubmit={handleSubmit} />;
};
export default NewCase;
