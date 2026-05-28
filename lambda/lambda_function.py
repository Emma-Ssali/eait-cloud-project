def handler(event, context):

    student = event.get("student")

    return {
        "message": f"Results uploaded for {student}"
    }
