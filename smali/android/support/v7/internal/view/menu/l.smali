.class Landroid/support/v7/internal/view/menu/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final jY:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrapped Object can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/l;->jY:Ljava/lang/Object;

    .line 28
    return-void
.end method
