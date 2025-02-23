.class final Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    .registers 3

    invoke-static {p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;
    .registers 2

    new-array p1, p1, [Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState$1;->newArray(I)[Landroid/support/v7/app/AppCompatDelegateImpl$PanelFeatureState$SavedState;

    move-result-object p1

    return-object p1
.end method
