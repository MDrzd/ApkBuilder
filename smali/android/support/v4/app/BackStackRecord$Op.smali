.class final Landroid/support/v4/app/BackStackRecord$Op;
.super Ljava/lang/Object;


# instance fields
.field cmd:I

.field enterAnim:I

.field exitAnim:I

.field fragment:Landroid/support/v4/app/Fragment;

.field popEnterAnim:I

.field popExitAnim:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILandroid/support/v4/app/Fragment;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    iput-object p2, p0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    return-void
.end method
