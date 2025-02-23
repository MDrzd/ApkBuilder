.class final Landroid/support/v7/widget/ActionMenuPresenter$SavedState$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    .registers 3

    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    .registers 2

    new-array p1, p1, [Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$SavedState$1;->newArray(I)[Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    move-result-object p1

    return-object p1
.end method
