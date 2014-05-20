.class final Landroid/support/v7/internal/widget/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cc:I

.field private oS:I

.field private pl:Z

.field final synthetic pm:Landroid/support/v7/internal/widget/ProgressBarICS;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ProgressBarICS;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Landroid/support/v7/internal/widget/ak;->pm:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput p2, p0, Landroid/support/v7/internal/widget/ak;->cc:I

    .line 398
    iput p3, p0, Landroid/support/v7/internal/widget/ak;->oS:I

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ak;->pl:Z

    .line 400
    return-void
.end method


# virtual methods
.method public final k(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 409
    iput p1, p0, Landroid/support/v7/internal/widget/ak;->cc:I

    .line 410
    iput p2, p0, Landroid/support/v7/internal/widget/ak;->oS:I

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ak;->pl:Z

    .line 412
    return-void
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v7/internal/widget/ak;->pm:Landroid/support/v7/internal/widget/ProgressBarICS;

    iget v1, p0, Landroid/support/v7/internal/widget/ak;->cc:I

    iget v2, p0, Landroid/support/v7/internal/widget/ak;->oS:I

    iget-boolean v3, p0, Landroid/support/v7/internal/widget/ak;->pl:Z

    invoke-static {v0, v1, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(Landroid/support/v7/internal/widget/ProgressBarICS;II)V

    .line 405
    iget-object v0, p0, Landroid/support/v7/internal/widget/ak;->pm:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-static {v0, p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ak;)Landroid/support/v7/internal/widget/ak;

    .line 406
    return-void
.end method
