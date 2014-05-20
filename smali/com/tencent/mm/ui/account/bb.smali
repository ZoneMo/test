.class public final Lcom/tencent/mm/ui/account/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private gqw:Ljava/lang/String;

.field private gqx:Ljava/lang/String;

.field private gqy:Ljava/lang/String;

.field private gqz:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/tencent/mm/ui/account/bb;->gqw:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/tencent/mm/ui/account/bb;->gqx:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/tencent/mm/ui/account/bb;->gqy:Ljava/lang/String;

    .line 29
    iput-boolean p4, p0, Lcom/tencent/mm/ui/account/bb;->gqz:Z

    .line 30
    return-void
.end method


# virtual methods
.method public final Tn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/mm/ui/account/bb;->gqy:Ljava/lang/String;

    return-object v0
.end method

.method public final aFK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/mm/ui/account/bb;->gqw:Ljava/lang/String;

    return-object v0
.end method

.method public final aFL()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/tencent/mm/ui/account/bb;->gqz:Z

    return v0
.end method

.method public final setSelected(Z)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/tencent/mm/ui/account/bb;->gqz:Z

    .line 58
    return-void
.end method
