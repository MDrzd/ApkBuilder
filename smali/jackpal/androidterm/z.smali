.class final Ljackpal/androidterm/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljackpal/androidterm/c/a;

.field private synthetic b:I

.field private synthetic c:Ljackpal/androidterm/y;


# direct methods
.method constructor <init>(Ljackpal/androidterm/y;Ljackpal/androidterm/c/a;I)V
    .registers 4

    iput-object p1, p0, Ljackpal/androidterm/z;->c:Ljackpal/androidterm/y;

    iput-object p2, p0, Ljackpal/androidterm/z;->a:Ljackpal/androidterm/c/a;

    iput p3, p0, Ljackpal/androidterm/z;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Ljackpal/androidterm/z;->a:Ljackpal/androidterm/c/a;

    iget v0, p0, Ljackpal/androidterm/z;->b:I

    invoke-virtual {p1, v0}, Ljackpal/androidterm/c/a;->a(I)Ljackpal/androidterm/a/q;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljackpal/androidterm/a/q;->d()V

    iget-object p1, p0, Ljackpal/androidterm/z;->c:Ljackpal/androidterm/y;

    invoke-virtual {p1}, Ljackpal/androidterm/y;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
