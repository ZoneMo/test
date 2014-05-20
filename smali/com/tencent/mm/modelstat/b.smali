.class public final Lcom/tencent/mm/modelstat/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cyA:I

.field public cyB:Ljava/lang/String;

.field cyC:Z

.field public cyz:I

.field public ispName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput v1, p0, Lcom/tencent/mm/modelstat/b;->cyz:I

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelstat/b;->ispName:Ljava/lang/String;

    .line 129
    iput v1, p0, Lcom/tencent/mm/modelstat/b;->cyA:I

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelstat/b;->cyB:Ljava/lang/String;

    .line 131
    iput-boolean v1, p0, Lcom/tencent/mm/modelstat/b;->cyC:Z

    return-void
.end method
