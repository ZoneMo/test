.class public final Lcom/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public JP:I

.field public JQ:I

.field public JR:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput v0, p0, Lcom/a/a/b;->JP:I

    .line 459
    iput v0, p0, Lcom/a/a/b;->JQ:I

    .line 460
    const-string v0, ""

    iput-object v0, p0, Lcom/a/a/b;->JR:Ljava/lang/String;

    return-void
.end method
