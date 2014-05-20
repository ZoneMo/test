.class public final Lcom/tencent/mm/c/a/el;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bPn:Lcom/tencent/mm/c/a/em;

.field public bPo:Lcom/tencent/mm/c/a/en;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/el;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/el;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/em;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/em;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/el;->bPn:Lcom/tencent/mm/c/a/em;

    .line 18
    new-instance v0, Lcom/tencent/mm/c/a/en;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/en;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/el;->bPo:Lcom/tencent/mm/c/a/en;

    .line 8
    const-string v0, "RadarSayHiMsg"

    iput-object v0, p0, Lcom/tencent/mm/c/a/el;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/el;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/el;->gbY:Z

    return-void
.end method
