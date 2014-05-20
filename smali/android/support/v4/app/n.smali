.class final Landroid/support/v4/app/n;
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
    .line 437
    iput-object p1, p0, Landroid/support/v4/app/n;->bF:Landroid/support/v4/app/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/v4/app/n;->bF:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->A()Z

    .line 441
    return-void
.end method
