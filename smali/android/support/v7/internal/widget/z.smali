.class final Landroid/support/v7/internal/widget/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic od:Landroid/support/v7/internal/widget/u;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/u;)V
    .locals 0
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Landroid/support/v7/internal/widget/z;->od:Landroid/support/v7/internal/widget/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/u;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 853
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/z;-><init>(Landroid/support/v7/internal/widget/u;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->od:Landroid/support/v7/internal/widget/u;

    iget-boolean v0, v0, Landroid/support/v7/internal/widget/u;->nP:Z

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->od:Landroid/support/v7/internal/widget/u;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->od:Landroid/support/v7/internal/widget/u;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/u;->post(Ljava/lang/Runnable;)Z

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->od:Landroid/support/v7/internal/widget/u;

    invoke-static {v0}, Landroid/support/v7/internal/widget/u;->b(Landroid/support/v7/internal/widget/u;)V

    goto :goto_0
.end method
