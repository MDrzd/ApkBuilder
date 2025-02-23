.class Landroid/support/v7/app/NavItemSelectedListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final mListener:Landroid/support/v7/app/ActionBar$OnNavigationListener;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBar$OnNavigationListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/app/NavItemSelectedListener;->mListener:Landroid/support/v7/app/ActionBar$OnNavigationListener;

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    iget-object p1, p0, Landroid/support/v7/app/NavItemSelectedListener;->mListener:Landroid/support/v7/app/ActionBar$OnNavigationListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/app/NavItemSelectedListener;->mListener:Landroid/support/v7/app/ActionBar$OnNavigationListener;

    invoke-interface {p1, p3, p4, p5}, Landroid/support/v7/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method
