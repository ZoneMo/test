.class public final Lcom/tencent/mm/c/a/ei;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bPh:Lcom/tencent/mm/c/a/ej;

.field public bPi:Lcom/tencent/mm/c/a/ek;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/ei;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/ei;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 16
    new-instance v0, Lcom/tencent/mm/c/a/ej;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ej;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ei;->bPh:Lcom/tencent/mm/c/a/ej;

    .line 25
    new-instance v0, Lcom/tencent/mm/c/a/ek;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ek;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ei;->bPi:Lcom/tencent/mm/c/a/ek;

    .line 11
    const-string v0, "QMessageOperation"

    iput-object v0, p0, Lcom/tencent/mm/c/a/ei;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/ei;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/ei;->gbY:Z

    return-void
.end method
