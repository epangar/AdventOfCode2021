public with sharing class BinaryDiagnostic {
    public String Title = 'Binary Diagnostic';
    public Integer Day = 3;
    private List<String> inputData = TreatData.treatStringList('BinaryDiagnostic');
    public Integer firstAnswer = BinaryDiagnostic.getGammaByEpsilon(inputData);
    public Integer secondAnswer = BinaryDiagnostic.getSecond(inputData);

    public static Integer getGammaByEpsilon(List<String> binaries) {
        return 0;
    }
    public static Integer getSecond(List<String> binaries) {
        return 0;
    }
}
