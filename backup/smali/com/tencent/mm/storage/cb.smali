.class public final Lcom/tencent/mm/storage/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private gjg:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 59
    if-ltz v0, :cond_0

    .line 60
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/cb;->user:Ljava/lang/String;

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/cb;->gjg:Ljava/lang/String;

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/storage/cb;->user:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/cb;->gjg:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final vA(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/mm/storage/cb;->gjg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/tencent/mm/storage/cb;->gjg:Ljava/lang/String;

    :cond_0
    return-object p1
.end method
