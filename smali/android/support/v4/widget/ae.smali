.class final Landroid/support/v4/widget/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gX:Landroid/support/v4/widget/ac;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Landroid/support/v4/widget/ae;->gX:Landroid/support/v4/widget/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v4/widget/ae;->gX:Landroid/support/v4/widget/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ac;->v(I)V

    .line 336
    return-void
.end method
