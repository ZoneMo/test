.class final Landroid/support/v4/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fZ:Landroid/support/v4/widget/h;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/h;)V
    .locals 0
    .parameter

    .prologue
    .line 1320
    iput-object p1, p0, Landroid/support/v4/widget/i;->fZ:Landroid/support/v4/widget/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Landroid/support/v4/widget/i;->fZ:Landroid/support/v4/widget/h;

    invoke-static {v0}, Landroid/support/v4/widget/h;->a(Landroid/support/v4/widget/h;)V

    .line 1323
    return-void
.end method
