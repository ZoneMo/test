.class final Landroid/support/v4/app/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bF:Landroid/support/v4/app/m;


# direct methods
.method constructor <init>(Landroid/support/v4/app/m;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Landroid/support/v4/app/o;->bF:Landroid/support/v4/app/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Landroid/support/v4/app/o;->bF:Landroid/support/v4/app/m;

    iget-object v1, p0, Landroid/support/v4/app/o;->bF:Landroid/support/v4/app/m;

    iget-object v1, v1, Landroid/support/v4/app/m;->as:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->C()Z

    .line 480
    return-void
.end method
