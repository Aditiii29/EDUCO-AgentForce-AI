public with sharing class EDUCOFeeCalculator {

    // Wrapper used for Input from Flow / AgentForce
    public class Request {
        @InvocableVariable(required=true)
        public String streamName;
    }

    // Wrapper used for Output to Flow / AgentForce
    public class Response {
        @InvocableVariable
        public String streamName;

        @InvocableVariable
        public Decimal gstPercentage;

        @InvocableVariable
        public Decimal registrationFee;

        @InvocableVariable
        public String message;
    }

    @InvocableMethod(label='Get EDUCO Registration Fee & GST'
                     description='Returns GST % and Registration Fee for the given Amity stream.')
    public static List<Response> getFeeDetails(List<Request> requestList) {

        List<Response> result = new List<Response>();

        // Master Fee + GST Mapping 
        Map<String, Decimal> gstMap = new Map<String, Decimal>{
            'Diploma'        => 2.00,
            'Certificate'    => 5.00,
            'Graduation'     => 10.00,
            'Post Graduation'=> 15.00,
            'Doctorate'      => 30.00,
            'PG Diploma'     => 8.00
        };

        Decimal baseRegistrationFee = 1500.00; // As mentioned in the PDF

        for (Request req : requestList) {

            Response res = new Response();
            res.streamName = req.streamName;

            // Validate stream
            if (gstMap.containsKey(req.streamName)) {
                res.gstPercentage = gstMap.get(req.streamName);
                res.registrationFee = baseRegistrationFee;
                res.message = 'Fee details fetched successfully.';
            } else {
                res.message = 'Invalid stream name. Please choose a valid Stream 1 option.';
            }

            result.add(res);
        }

        return result;
    }
}
