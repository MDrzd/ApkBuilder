.class Lorg/jf/util/StringWrapper$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private currentLineStart:I

.field private nextLine:Ljava/lang/String;

.field private nextLineSet:Z

.field final synthetic this$0:Lorg/jf/util/StringWrapper$1;


# direct methods
.method constructor <init>(Lorg/jf/util/StringWrapper$1;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/util/StringWrapper$1$1;->this$0:Lorg/jf/util/StringWrapper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/jf/util/StringWrapper$1$1;->currentLineStart:I

    iput-boolean p1, p0, Lorg/jf/util/StringWrapper$1$1;->nextLineSet:Z

    return-void
.end method

.method private calculateNext()V
    .registers 6

    iget v0, p0, Lorg/jf/util/StringWrapper$1$1;->currentLineStart:I

    :cond_0
    iget-object v1, p0, Lorg/jf/util/StringWrapper$1$1;->this$0:Lorg/jf/util/StringWrapper$1;

    iget-object v1, v1, Lorg/jf/util/StringWrapper$1;->val$breakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/jf/util/StringWrapper$1$1;->this$0:Lorg/jf/util/StringWrapper$1;

    iget-object v0, v0, Lorg/jf/util/StringWrapper$1;->val$breakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v0}, Ljava/text/BreakIterator;->last()I

    move-result v0

    iget v1, p0, Lorg/jf/util/StringWrapper$1$1;->currentLineStart:I

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jf/util/StringWrapper$1$1;->nextLine:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/jf/util/StringWrapper$1$1;->nextLineSet:Z

    return-void

    :cond_1
    iget v1, p0, Lorg/jf/util/StringWrapper$1$1;->currentLineStart:I

    sub-int v1, v0, v1

    iget-object v3, p0, Lorg/jf/util/StringWrapper$1$1;->this$0:Lorg/jf/util/StringWrapper$1;

    iget v3, v3, Lorg/jf/util/StringWrapper$1;->val$maxWidth:I

    if-le v1, v3, :cond_3

    iget-object v1, p0, Lorg/jf/util/StringWrapper$1$1;->this$0:Lorg/jf/util/StringWrapper$1;

    iget-object v1, v1, Lorg/jf/util/StringWrapper$1;->val$breakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    iget v1, p0, Lorg/jf/util/StringWrapper$1$1;->currentLineStart:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lorg/jf/util/StringWrapper$1$1;->currentLineStart:I

    iget-object v1, p0, Lorg/jf/util/StringWrapper$1$1;->this$0:Lorg/jf/util/StringWrapper$1;

    iget v1, v1, Lorg/jf/util/StringWrapper$1;->val$maxWidth:I

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lorg/jf/util/StringWrapper$1$1;->this$0:Lorg/jf/util/StringWrapper$1;

    iget-object v1, v1, Lorg/jf/util/StringWrapper$1;->val$string:Ljava/lang/String;

    iget v3, p0, Lorg/jf/util/StringWrapper$1$1;->currentLineStart:I

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/util/StringWrapper$1$1;->nextLine:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/jf/util/StringWrapper$1$1;->nextLineSet:Z

    iput v0, p0, Lorg/jf/util/StringWrapper$1$1;->currentLineStart:I

    return-void

    :cond_3
    iget-object v1, p0, Lorg/jf/util/StringWrapper$1$1;->this$0:Lorg/jf/util/StringWrapper$1;

    iget-object v1, v1, Lorg/jf/util/StringWrapper$1;->val$string:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lorg/jf/util/StringWrapper$1$1;->this$0:Lorg/jf/util/StringWrapper$1;

    iget-object v1, v1, Lorg/jf/util/StringWrapper$1;->val$string:Ljava/lang/String;

    iget v4, p0, Lorg/jf/util/StringWrapper$1$1;->currentLineStart:I

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jf/util/StringWrapper$1$1;->nextLine:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/jf/util/StringWrapper$1$1;->nextLineSet:Z

    iput v0, p0, Lorg/jf/util/StringWrapper$1$1;->currentLineStart:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jf/util/StringWrapper$1$1;->nextLineSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/jf/util/StringWrapper$1$1;->calculateNext()V

    :cond_0
    iget-object v0, p0, Lorg/jf/util/StringWrapper$1$1;->nextLine:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jf/util/StringWrapper$1$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/jf/util/StringWrapper$1$1;->nextLine:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jf/util/StringWrapper$1$1;->nextLine:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jf/util/StringWrapper$1$1;->nextLineSet:Z

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
