import unicodecsv

#https://classroom.udacity.com/courses/ud170/lessons/5430778793/concepts/53961386130923
#https://classroom.udacity.com/datasets/ud170/udacity-students/enrollments.csv'
enrollments_filename = '/datasets/ud170/udacity-students/enrollments.csv'

## Longer version of code (replaced with shorter, equivalent version below)

# enrollments = []
# f = open(enrollments_filename, 'rb')
# reader = unicodecsv.DictReader(f)
# for row in reader:
#     enrollments.append(row)
# f.close()

with open(enrollments_filename, 'rb') as f:
    reader = unicodecsv.DictReader(f)
    enrollments = list(reader)
    
### Write code similar to the above to load the engagement
### and submission data. The data is stored in files with
### the given filenames. Then print the first row of each
### table to make sure that your code works. You can use the
### "Test Run" button to see the output of your code.

engagement_filename = '/datasets/ud170/udacity-students/daily_engagement.csv'
daily_engagement = None     # Replace this with your code
with open(engagement_filename, 'rb') as f:
    reader = unicodecsv.DictReader(f)
    daily_engagement = list(reader)

submissions_filename = '/datasets/ud170/udacity-students/project_submissions.csv'
project_submissions = None  # Replace this with your code
with open(submissions_filename, 'rb') as f:
    reader = unicodecsv.DictReader(f)
    project_submissions = list(reader)
    
    
print(enrollments[0])
print(daily_engagement[0])
print(project_submissions[0])
